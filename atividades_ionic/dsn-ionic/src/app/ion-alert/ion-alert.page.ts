import { Component, OnInit } from '@angular/core';
import { AlertController } from '@ionic/angular';

@Component({
  selector: 'app-ion-alert',
  templateUrl: './ion-alert.page.html',
  styleUrls: ['./ion-alert.page.scss'],
})
export class IonAlertPage implements OnInit {

  constructor(public alertController: AlertController) { }

  ngOnInit() {
  }

  async alerta(form) {
    const alert = await this.alertController.create({
      header: 'Alerta',
      subHeader: 'Ionic',
      message: `${form[1]}`,
      buttons: ['OK']
    });
  
    await alert.present();
  }

}
