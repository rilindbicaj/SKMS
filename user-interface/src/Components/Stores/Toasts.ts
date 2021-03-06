import { toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";

export const ErrorToast = (message?: string) => {
  toast.error(
    message ??
      "Diçka nuk shkoi mirë. Ju lutem kontakti zyrën për ndihmë teknike.",
    {
      autoClose: 3000,
    }
  );
};

export const SuccessToast = () => {
  toast.success("U krye me sukses!", {
    autoClose: 3000,
  });
};
