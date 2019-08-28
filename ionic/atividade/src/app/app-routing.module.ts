import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full' },
  { path: 'home', loadChildren: './home/home.module#HomePageModule' },
  { path: 'temporada01', loadChildren: './temporada01/temporada01.module#Temporada01PageModule' },
  { path: 'temporada02', loadChildren: './temporada02/temporada02.module#Temporada02PageModule' },
  { path: 'temporada03', loadChildren: './temporada03/temporada03.module#Temporada03PageModule' },
  { path: 'elenco', loadChildren: './elenco/elenco.module#ElencoPageModule' },
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
