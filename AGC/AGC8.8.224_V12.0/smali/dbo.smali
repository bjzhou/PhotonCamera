.class public final synthetic Ldbo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ldbp;

.field public final synthetic b:Lklv;

.field public final synthetic c:I

.field public final synthetic d:I

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ldbp;Lklv;III)V
    .locals 0

    iput p5, p0, Ldbo;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbo;->a:Ldbp;

    iput-object p2, p0, Ldbo;->b:Lklv;

    iput p3, p0, Ldbo;->c:I

    iput p4, p0, Ldbo;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget p2, p0, Ldbo;->e:I

    const/4 v0, 0x5

    const/4 v1, 0x4

    const-string v2, " camera not working. User decided to close the app instead of using the available camera"

    const/4 v3, 0x3

    packed-switch p2, :pswitch_data_0

    iget-object p2, p0, Ldbo;->a:Ldbp;

    iget-object v1, p0, Ldbo;->b:Lklv;

    iget v2, p0, Ldbo;->c:I

    iget v3, p0, Ldbo;->d:I

    invoke-virtual {p2, v1, v2, v3, v0}, Ldbp;->e(Lklv;III)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_0
    iget-object p2, p0, Ldbo;->a:Ldbp;

    iget-object v1, p0, Ldbo;->b:Lklv;

    iget v3, p0, Ldbo;->c:I

    iget v4, p0, Ldbo;->d:I

    invoke-virtual {p2, v1, v3, v4, v0}, Ldbp;->f(Lklv;III)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p2, Ldbp;->b:Lcdx;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcdx;->a(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object p2, p0, Ldbo;->a:Ldbp;

    iget-object v0, p0, Ldbo;->b:Lklv;

    iget v2, p0, Ldbo;->c:I

    iget v3, p0, Ldbo;->d:I

    invoke-virtual {p2, v0, v2, v3, v1}, Ldbp;->e(Lklv;III)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_2
    iget-object p1, p0, Ldbo;->a:Ldbp;

    iget-object p2, p0, Ldbo;->b:Lklv;

    iget v0, p0, Ldbo;->c:I

    iget v2, p0, Ldbo;->d:I

    invoke-virtual {p1, p2, v0, v2, v1}, Ldbp;->f(Lklv;III)V

    iget-object p2, p1, Ldbp;->a:Landroid/content/Context;

    iget-object p1, p1, Ldbp;->d:Lcvr;

    invoke-virtual {p1}, Lcvr;->h()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2, p1}, Lbze;->ac(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :pswitch_3
    iget-object p2, p0, Ldbo;->a:Ldbp;

    iget-object v0, p0, Ldbo;->b:Lklv;

    iget v1, p0, Ldbo;->c:I

    iget v4, p0, Ldbo;->d:I

    invoke-virtual {p2, v0, v1, v4, v3}, Ldbp;->f(Lklv;III)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p2, Ldbp;->b:Lcdx;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcdx;->a(Ljava/lang/String;)V

    return-void

    :pswitch_4
    iget-object p2, p0, Ldbo;->a:Ldbp;

    iget-object v0, p0, Ldbo;->b:Lklv;

    iget v1, p0, Ldbo;->c:I

    iget v2, p0, Ldbo;->d:I

    invoke-virtual {p2, v0, v1, v2, v3}, Ldbp;->e(Lklv;III)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
