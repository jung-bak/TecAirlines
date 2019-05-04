import { Component, OnInit } from '@angular/core';
import { DataService } from '@app/_services';

@Component({
  selector: 'app-airbus',
  templateUrl: './airbus.component.html',
  styleUrls: ['./airbus.component.scss']
})
export class AirbusComponent implements OnInit {

  dataCart: any[];
  seatConfig: any = null;
  seatmap = [];
  seatChartConfig = {
    showRowsLabel : false,
    showRowWisePricing : false,
    newSeatNoForRow : false
  };

  cart = {
    selectedSeats: [],
    seatstoStore: [],
    totalamount: 0,
    cartId: '',
    eventId: 0
  };

  cTickets: number;
  active: boolean = false;

  constructor(
    private data: DataService
  ) { }

  ngOnInit(): void {
    this.data.currentCart.subscribe(cart => this.dataCart = cart);
    this.data.currentCticks.subscribe(data => this.cTickets = data);
    this.seatConfig = [
      {
        'seat_price': 100,
        'economy_price': 50,
        'business_price': 150,
        'first_price': 250,
        'seat_map': [
          {
            'seat_label': '1',
            'layout': 'nnnnnnnnnnnn__nnnnn____nnnnn'
          },
          {
            'seat_label': '2',
            'layout': 'nnnnnnnnnnnn__nnnnn_________'
          },
          {
            'seat_label': '3',
            'layout': 'nnnnnnnnnnnn________________'
          },
          {
            'seat_label': '4',
            'layout': '____________________________'
          },
          {
            'seat_label': '5',
            'layout': 'nnnnnnnnnnnn________________'
          },
          {
            'seat_label': '6',
            'layout': 'nnnnnnnnnnnn__nnnnn_________'
          },
          {
            'seat_label': '7',
            'layout': 'nnnnnnnnnnnn__nnnnn____nnnnn'
          }
        ]
      }
    ];
    this.processSeatChart(this.seatConfig);
  }

  updateCart() {
    if (!this.active) {
      this.active = !this.active;
    }
    this.data.changeCart(this.cart.selectedSeats);
    this.data.changeAmount(this.cart.totalamount);
  }

  public processSeatChart(map_data: any[]) {
    if ( map_data.length > 0 ) {
      let seatNoCounter = 1;
      for (let __counter = 0; __counter < map_data.length; __counter++) {
        let totalItemCounter = 1;
        let row_label = '';
        const item_map = map_data[__counter].seat_map;
        row_label = 'Row ' + item_map[0].seat_label + ' - ';
          if ( item_map[ item_map.length - 1].seat_label !== ' ' ) {
            row_label += item_map[ item_map.length - 1].seat_label;
          } else {
            row_label += item_map[ item_map.length - 2].seat_label;
          }
          if (totalItemCounter <= 12) {
            row_label += ' : Rs. ' + map_data[__counter].economy_price;
          } else if ( 15 <= totalItemCounter && totalItemCounter <= 19) {
            row_label += ' : Rs. ' + map_data[__counter].business_price;
          } else if ( 24 <= totalItemCounter) {
            row_label += ' : Rs. ' + map_data[__counter].first_price;
          }
        item_map.forEach(map_element => {
          const mapObj = {
            'seatRowLabel': map_element.seat_label,
            'seats': [],
            'seatPricingInformation': row_label
          };
          row_label = '';
          const seatValArr = map_element.layout.split('');
          if (this.seatChartConfig.newSeatNoForRow) {
            seatNoCounter = 1;
          }
          seatValArr.forEach(item => {
            let seatObj = {
              'key': map_element.seat_label + '_' + totalItemCounter,
              'price' : map_data[__counter]['seat_price'],
              'status' : 'available'
            };
            if (totalItemCounter <= 12) {
              seatObj.price = map_data[__counter]['economy_price'];
            } else if ( 15 <= totalItemCounter && totalItemCounter <= 19) {
              seatObj.price = map_data[__counter]['business_price'];
            } else if ( 24 <= totalItemCounter) {
              seatObj.price = map_data[__counter]['first_price'];
            }
            if ( item !== '_') {
              seatObj['seatLabel'] = map_element.seat_label + ' ' + seatNoCounter;
              if (seatNoCounter < 10) { seatObj['seatNo'] = '0' + seatNoCounter; } else { seatObj['seatNo'] = '' + seatNoCounter; }
              seatNoCounter++;
            } else {
              seatObj['seatLabel'] = '';
            }
            totalItemCounter++;
            if (totalItemCounter === 29) { totalItemCounter = 1; }
            mapObj['seats'].push(seatObj);
          });
          console.log('\n\n\n Seat Objects ', mapObj);
          this.seatmap.push(mapObj);
        });
      }
    }
  }

  public selectSeat( seatObject: any ) {
    console.log( 'Seat to block: ' , seatObject );
    if (seatObject.status === 'available') {
      seatObject.status = 'booked';
      this.cart.selectedSeats.push(seatObject.seatLabel);
      this.cart.seatstoStore.push(seatObject.key);
      this.cart.totalamount += seatObject.price;
    } else if ( seatObject.status = 'booked' ) {
      seatObject.status = 'available';
      const seatIndex = this.cart.selectedSeats.indexOf(seatObject.seatLabel);
      if ( seatIndex > -1) {
        this.cart.selectedSeats.splice(seatIndex , 1);
        this.cart.seatstoStore.splice(seatIndex , 1);
        this.cart.totalamount -= seatObject.price;
      }

    }
  }

  public blockSeats(seatsToBlock: string) {
    if (seatsToBlock !== '') {
      const seatsToBlockArr = seatsToBlock.split(',');
      for (let index = 0; index < seatsToBlockArr.length; index++) {
        const seat =  seatsToBlockArr[index] + '';
        const seatSplitArr = seat.split('_');
        console.log('Split seat: ' , seatSplitArr);
        for (let index2 = 0; index2 < this.seatmap.length; index2++) {
          const element = this.seatmap[index2];
          if (element.seatRowLabel === seatSplitArr[0]) {
// tslint:disable-next-line: radix
            const seatObj = element.seats[parseInt(seatSplitArr[1]) - 1];
            if (seatObj) {
              console.log('\n\n\nFount Seat to block: ' , seatObj);
              seatObj['status'] = 'unavailable';
// tslint:disable-next-line: radix
              this.seatmap[index2]['seats'][parseInt(seatSplitArr[1]) - 1] = seatObj;
              console.log('\n\n\nSeat Obj' , seatObj);
// tslint:disable-next-line: radix
              console.log(this.seatmap[index2]['seats'][parseInt(seatSplitArr[1]) - 1]);
              break;
            }

          }
        }

      }
    }

  }
}
