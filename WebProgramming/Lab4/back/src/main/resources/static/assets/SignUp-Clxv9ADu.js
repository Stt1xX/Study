import{_ as k,o as x,r as P,a as S,c as T,b as e,d as M,e as U,w as C,f,v as h,u as g,i as w,p as B,g as V}from"./index-B2GLxFZ0.js";const p=d=>(B("data-v-5849098a"),d=d(),V(),d),E={id:"formWrapper"},F={id:"form",class:"scallop"},N={id:"innerForm"},L=p(()=>e("h1",null,"Registration",-1)),D={class:"wrapperInput"},H=p(()=>e("p",{id:"usernameMessage",class:"errorMessage"},"Field username can't be empty!",-1)),O={class:"wrapperInput"},R=p(()=>e("p",{id:"passwordMessage",class:"errorMessage"},"Field password can't be empty!",-1)),j={class:"wrapperInput"},A=p(()=>e("p",{id:"ConfirmPasswordMessage",class:"errorMessage"},"Passwords don't match!",-1)),J={__name:"SignUp",setup(d){let i,n,a,o,u,c;x(()=>{o=document.getElementById("usernameMessage"),u=document.getElementById("passwordMessage"),c=document.getElementById("ConfirmPasswordMessage")});function _(){return i===""||i===void 0?(o.innerHTML="Field username can't be empty!",o.style.visibility="visible",!1):(o.style.visibility="hidden",!0)}function y(){return n===""||n===void 0?(u.style.visibility="visible",!1):(u.style.visibility="hidden",!0)}function v(){return a!==n?(c.style.visibility="visible",!1):(c.style.visibility="hidden",!0)}function I(r){_()&y()&v()&&fetch("http://localhost:8080/api-signUp",{method:"POST",headers:{"Content-Type":"application/json",credentials:"include"},body:JSON.stringify({username:i,password:n})}).then(s=>{s.ok?(b("Login",i,2),b("Password",n,2),r.push("/main")):(o.innerHTML="This user with same name has already been registered!",o.style.visibility="visible")})}function b(r,s,l){let t="";if(l){let m=new Date;m.setTime(m.getTime()+l*24*60*60*1e3),t="; expires="+m.toUTCString()}document.cookie=r+"="+(s||"")+t+"; path=/"}return(r,s)=>{const l=P("router-link");return S(),T("div",E,[e("div",F,[e("div",N,[L,e("span",null,[M(" Already have an account? "),U(l,{to:"/login"},{default:C(()=>[M("Sign In")]),_:1})]),e("div",D,[f(e("input",{id:"username","onUpdate:modelValue":s[0]||(s[0]=t=>w(i)?i.value=t:i=t),onInput:_,type:"text",placeholder:"Username",maxlength:"20"},null,544),[[h,g(i)]]),H]),e("div",O,[f(e("input",{id:"password","onUpdate:modelValue":s[1]||(s[1]=t=>w(n)?n.value=t:n=t),onInput:y,type:"password",placeholder:"Password",maxlength:"20"},null,544),[[h,g(n)]]),R]),e("div",j,[f(e("input",{id:"confirmPassword","onUpdate:modelValue":s[2]||(s[2]=t=>w(a)?a.value=t:a=t),onInput:v,type:"password",placeholder:"Confirm password",maxlength:"20"},null,544),[[h,g(a)]]),A]),e("button",{onClick:s[3]||(s[3]=t=>I(r.$router))},"Sign Up")])])])}}},q=k(J,[["__scopeId","data-v-5849098a"]]);export{q as default};
