import { IStreet } from "./IStreet";

export interface IUser {
  userId: string;
  name: string;
  surname: string;
  userAddress: string;
  gender: string;
  birthday: string;
  profilePictureUrl: string;

  userAddressNavigation?: IStreet;
}
