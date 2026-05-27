.class public final synthetic Lezw;
.super Ljava/lang/Object;

# interfaces
.implements Lfaj;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lfak;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lezx;Landroid/os/Bundle;I)V
    .locals 0

    iput p3, p0, Lezw;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lezw;->b:Lfak;

    iput-object p2, p0, Lezw;->a:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Lfak;Landroid/os/Bundle;I)V
    .locals 0

    iput p3, p0, Lezw;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lezw;->b:Lfak;

    iput-object p2, p0, Lezw;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lfaz;)V
    .locals 2

    iget v0, p0, Lezw;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lezw;->a:Landroid/os/Bundle;

    instance-of v1, p1, Lfan;

    if-eqz v1, :cond_2

    invoke-static {p1, v0}, Lfak;->g(Lfaz;Landroid/os/Bundle;)Landroid/os/Bundle;

    check-cast p1, Lfan;

    invoke-interface {p1}, Lfan;->bQ()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lezw;->a:Landroid/os/Bundle;

    instance-of v1, p1, Lezl;

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lezx;->g(Lfaz;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lezl;

    invoke-interface {p1, v0}, Lezl;->g(Landroid/os/Bundle;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lezw;->a:Landroid/os/Bundle;

    instance-of v1, p1, Lezi;

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lezx;->g(Lfaz;Landroid/os/Bundle;)Landroid/os/Bundle;

    check-cast p1, Lezi;

    invoke-interface {p1}, Lezi;->b()V

    :cond_1
    return-void

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
