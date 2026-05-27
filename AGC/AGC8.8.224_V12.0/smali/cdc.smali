.class public final synthetic Lcdc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lcdc;->b:I

    iput-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lann;I)V
    .locals 0

    iput p2, p0, Lcdc;->b:I

    iput-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbkc;I[B[B)V
    .locals 0

    iput p2, p0, Lcdc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcds;I)V
    .locals 0

    iput p2, p0, Lcdc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcsg;I)V
    .locals 0

    iput p2, p0, Lcdc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldni;I[B)V
    .locals 0

    iput p2, p0, Lcdc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfib;I[B)V
    .locals 0

    iput p2, p0, Lcdc;->b:I

    iput-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfib;I[C)V
    .locals 0

    iput p2, p0, Lcdc;->b:I

    iput-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfng;I)V
    .locals 0

    iput p2, p0, Lcdc;->b:I

    iput-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhdk;I[B[B[B)V
    .locals 0

    iput p2, p0, Lcdc;->b:I

    iput-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lhlr;I)V
    .locals 0

    iput p2, p0, Lcdc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhoz;I)V
    .locals 0

    iput p2, p0, Lcdc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhqp;I)V
    .locals 0

    iput p2, p0, Lcdc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljew;I[B[B[B)V
    .locals 0

    iput p2, p0, Lcdc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lva;I[B)V
    .locals 0

    iput p2, p0, Lcdc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget v0, p0, Lcdc;->b:I

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.VR_LISTENER_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "market://details?id=com.google.vr.vrcore"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p2, "com.android.vending"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p2, p0, Lcdc;->a:Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p1, Lodx;->a:Ljava/lang/String;

    const-string p2, "Google Play Services is not installed, unable to download VrCore."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    iget-object p2, p0, Lcdc;->a:Ljava/lang/Object;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    check-cast p2, Lhqp;

    iget-object p1, p2, Lhqp;->c:Ljwb;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object p1, p2, Lhqp;->d:Lgeh;

    iget-object v0, p2, Lhqp;->i:Lgen;

    invoke-interface {p1, v0}, Lgeh;->n(Lgen;)V

    invoke-virtual {p2}, Lhqp;->b()V

    return-void

    :pswitch_2
    iget-object p2, p0, Lcdc;->a:Ljava/lang/Object;

    check-cast p2, Lhoz;

    iget-object p2, p2, Lhoz;->c:Lcgy;

    invoke-interface {p2}, Lcgy;->g()Lcha;

    move-result-object p2

    invoke-interface {p2}, Lcha;->d()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_3
    iget-object p2, p0, Lcdc;->a:Ljava/lang/Object;

    check-cast p2, Lhoz;

    iget-object p2, p2, Lhoz;->c:Lcgy;

    invoke-interface {p2}, Lcgy;->g()Lcha;

    move-result-object p2

    invoke-interface {p2}, Lcha;->d()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    check-cast p1, Lhlr;

    iget-object p2, p1, Lhlr;->a:Landroid/content/Context;

    iget-object v0, p1, Lhlr;->c:Ldhi;

    invoke-static {p2, v0}, Lhlq;->a(Landroid/content/Context;Ldhi;)Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p1, Lhlr;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgus;

    invoke-interface {p1, p2}, Lgus;->g(Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object p1, p1, Lhlr;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljew;

    iget-object p1, p1, Ljew;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget-object p1, p1, Lfng;->s:Lcgy;

    const-string p2, "Fatal error in Panorama module: 2132018098"

    invoke-interface {p1, p2}, Lcgy;->u(Ljava/lang/String;)V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget-object p1, p1, Lfng;->s:Lcgy;

    invoke-interface {p1}, Lcgy;->g()Lcha;

    move-result-object p1

    invoke-interface {p1}, Lcha;->d()V

    return-void

    :pswitch_8
    iget-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    check-cast p1, Lfib;

    iget-object p1, p1, Lfib;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    invoke-virtual {p1}, Lfng;->z()V

    return-void

    :pswitch_9
    iget-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    check-cast p1, Lfib;

    iget-object p1, p1, Lfib;->a:Ljava/lang/Object;

    check-cast p1, Lfng;

    iget-object p2, p1, Lfng;->r:Leww;

    if-eqz p2, :cond_2

    iget-boolean p2, p2, Leww;->r:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lfng;->x()V

    return-void

    :cond_2
    :goto_0
    sget-object p1, Lfng;->b:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "Photo is being taken, ignoring user\'s request for cancel."

    const/16 v0, 0x946

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :pswitch_a
    iget-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    check-cast p1, Lhdk;

    iget-object p1, p1, Lhdk;->c:Ljava/lang/Object;

    check-cast p1, Lcdx;

    const-string p2, "CaptureModule: Out of storage space on device."

    invoke-virtual {p1, p2}, Lcdx;->a(Ljava/lang/String;)V

    return-void

    :pswitch_b
    iget-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "package:com.google.android.apps.photos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    check-cast p1, Lbkc;

    iget-object p1, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_c
    iget-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "market://details?id=com.google.android.apps.photos"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    check-cast p1, Lbkc;

    iget-object p1, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_d
    iget-object p2, p0, Lcdc;->a:Ljava/lang/Object;

    check-cast p2, Lcsg;

    iget-object p2, p2, Lcsg;->d:Lcha;

    if-eqz p2, :cond_3

    invoke-interface {p2, v4}, Lcha;->j(Z)V

    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_e
    iget-object p2, p0, Lcdc;->a:Ljava/lang/Object;

    check-cast p2, Lcsg;

    iget-object v0, p2, Lcsg;->d:Lcha;

    if-eqz v0, :cond_4

    invoke-interface {v0, v4}, Lcha;->j(Z)V

    :cond_4
    iget-object v0, p2, Lcsg;->a:Lcqv;

    invoke-interface {v0}, Lcqv;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcsg;->b:Libj;

    sget-object v1, Lika;->b:Lika;

    invoke-interface {v0, v1}, Libj;->w(Lika;)V

    :cond_5
    iget-object v0, p2, Lcsg;->a:Lcqv;

    invoke-interface {v0}, Lcqv;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p2, p2, Lcsg;->d:Lcha;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lcha;->d()V

    :cond_6
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_f
    iget-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    check-cast p1, Lcds;

    iget-object v0, p1, Lcds;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "package:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p1, Lcds;->h:Lbkc;

    invoke-virtual {v0, p2}, Lbkc;->f(Landroid/content/Intent;)V

    iget-object p2, p1, Lcds;->f:Lnph;

    invoke-virtual {p2, v3}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcds;->b:Lcdx;

    const-string p2, "Closing until required permissions are granted."

    invoke-virtual {p1, p2}, Lcdx;->a(Ljava/lang/String;)V

    return-void

    :pswitch_10
    iget-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    check-cast p1, Lcds;

    iget-object p2, p1, Lcds;->f:Lnph;

    invoke-virtual {p2, v3}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcds;->b:Lcdx;

    const-string p2, "Required camera permissions were not granted."

    invoke-virtual {p1, p2}, Lcdx;->a(Ljava/lang/String;)V

    return-void

    :pswitch_11
    iget-object p1, p0, Lcdc;->a:Ljava/lang/Object;

    check-cast p1, Lva;

    iget-object p1, p1, Lva;->a:Ljava/lang/Object;

    check-cast p1, Lcdx;

    const-string p2, "ImageIntent: No write permission to intent media output uri."

    invoke-virtual {p1, p2}, Lcdx;->a(Ljava/lang/String;)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lcdc;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lann;

    iput p2, v1, Lann;->ad:I

    check-cast v0, Lanz;

    const/4 p2, -0x1

    iput p2, v0, Lanz;->ah:I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_13
    iget-object p2, p0, Lcdc;->a:Ljava/lang/Object;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    check-cast p2, Ldni;

    iget-object p1, p2, Ldni;->a:Ljava/lang/Object;

    check-cast p1, Lcdx;

    const-string p2, "Camera Disabled due to policy"

    invoke-virtual {p1, p2}, Lcdx;->a(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
