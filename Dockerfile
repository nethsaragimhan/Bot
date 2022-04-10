FROM fusuf/whatsasena:latest

RUN git https://github.com/nethsaragimhan/King-Wa-Bot-Main /root/King-Wa-Bot-Main
WORKDIR /root/King-Wa-Bot-Main/
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "assets/module.js"]


