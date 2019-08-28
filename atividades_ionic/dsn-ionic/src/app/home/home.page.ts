import { Component } from '@angular/core';
import { AlertController } from '@ionic/angular';


@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  constructor(public alertController: AlertController) {}
  
  async presentAlert(form) {
    const alert = await this.alertController.create({
      header: 'DSN - IONIC',
      subHeader: 'IONIC',
      message: `This is ETEC MAN. ${form}`,
      buttons: ['OK']
    });
  
    await alert.present();
  }

}