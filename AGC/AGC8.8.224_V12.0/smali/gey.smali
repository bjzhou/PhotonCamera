.class public final synthetic Lgey;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field public final synthetic a:Ljwb;

.field public final synthetic b:Z

.field public final synthetic c:Lgeh;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljwb;ZLgeh;I)V
    .locals 0

    iput p4, p0, Lgey;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgey;->a:Ljwb;

    iput-boolean p2, p0, Lgey;->b:Z

    iput-object p3, p0, Lgey;->c:Lgeh;

    return-void
.end method


# virtual methods
.method public final bn(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lgey;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgey;->a:Ljwb;

    iget-boolean v2, p0, Lgey;->b:Z

    iget-object v3, p0, Lgey;->c:Lgeh;

    check-cast p1, Ljava/lang/Boolean;

    sget-object v4, Lgff;->a:Lnak;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lgej;->j:Lgej;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    sget-object p1, Lgff;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v2, "MenuItemModule.BackPhotoFlash.flashDisabledThermally: fallback to ANS"

    const/16 v4, 0xa2b

    invoke-static {p1, v2, v4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object p1, Lgej;->m:Lgej;

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lgey;->a:Ljwb;

    iget-boolean v2, p0, Lgey;->b:Z

    iget-object v3, p0, Lgey;->c:Lgeh;

    check-cast p1, Ljava/lang/Boolean;

    sget-object v4, Lgff;->a:Lnak;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lgej;->j:Lgej;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz v2, :cond_0

    sget-object p1, Lgff;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v2, "MenuItemModule.BackPhotoFlash.evCompViewController: fallback to ANS"

    const/16 v4, 0xa2c

    invoke-static {p1, v2, v4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object p1, Lgej;->m:Lgej;

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    sget-object p1, Lgec;->f:Lgec;

    invoke-interface {v3, v1, p1}, Lgeh;->o(ZLgec;)V

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lgec;->f:Lgec;

    invoke-interface {v3, v1, p1}, Lgeh;->o(ZLgec;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
