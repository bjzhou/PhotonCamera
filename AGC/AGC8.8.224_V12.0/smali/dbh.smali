.class public final synthetic Ldbh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ldbi;

.field public final synthetic b:I

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ldbi;II)V
    .locals 0

    iput p3, p0, Ldbh;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbh;->a:Ldbi;

    iput p2, p0, Ldbh;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget p2, p0, Ldbh;->c:I

    const/4 v0, 0x4

    const-string v1, "None of the cameras are working. User decided to close the app"

    packed-switch p2, :pswitch_data_0

    iget-object p2, p0, Ldbh;->a:Ldbi;

    const/4 v0, 0x3

    iget v2, p0, Ldbh;->b:I

    invoke-virtual {p2, v0, v2}, Ldbi;->d(II)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p2, Ldbi;->b:Lcdx;

    invoke-virtual {p1, v1}, Lcdx;->a(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Ldbh;->a:Ldbi;

    iget v4, p0, Ldbh;->b:I

    iget-object p2, p1, Ldbi;->e:Lkaq;

    invoke-static {v4}, Ldcb;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lmoz;->L(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hardware help dialog for unavailability of any cameras due to reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at stage "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Positive button clicked"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v1, p1, Ldbi;->d:Lfbz;

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lfbz;->W(IIILklv;I)V

    iget-object p2, p1, Ldbi;->b:Lcdx;

    const-string v0, "None of the cameras are working. User decided to visit the help center"

    invoke-virtual {p2, v0}, Lcdx;->a(Ljava/lang/String;)V

    iget-object p2, p1, Ldbi;->a:Landroid/content/Context;

    iget-object p1, p1, Ldbi;->f:Lcvr;

    invoke-virtual {p1}, Lcvr;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2, p1}, Lbze;->ac(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :pswitch_1
    iget-object p2, p0, Ldbh;->a:Ldbi;

    iget v0, p0, Ldbh;->b:I

    const/4 v2, 0x5

    invoke-virtual {p2, v2, v0}, Ldbi;->d(II)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p2, Ldbi;->b:Lcdx;

    invoke-virtual {p1, v1}, Lcdx;->a(Ljava/lang/String;)V

    return-void

    :pswitch_2
    iget-object p2, p0, Ldbh;->a:Ldbi;

    iget v2, p0, Ldbh;->b:I

    invoke-virtual {p2, v0, v2}, Ldbi;->d(II)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p2, Ldbi;->b:Lcdx;

    invoke-virtual {p1, v1}, Lcdx;->a(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
