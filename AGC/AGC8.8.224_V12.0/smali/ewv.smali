.class public final Lewv;
.super Ljava/lang/Object;

# interfaces
.implements Lbmy;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lews;Lbne;I)V
    .locals 0

    iput p3, p0, Lewv;->c:I

    iput-object p1, p0, Lewv;->a:Ljava/lang/Object;

    iput-object p2, p0, Lewv;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leww;Lexz;I)V
    .locals 0

    iput p3, p0, Lewv;->c:I

    iput-object p1, p0, Lewv;->b:Ljava/lang/Object;

    iput-object p2, p0, Lewv;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLbne;)V
    .locals 3

    iget p2, p0, Lewv;->c:I

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    iget-object p2, p0, Lewv;->a:Ljava/lang/Object;

    check-cast p2, Lews;

    iget-object p2, p2, Lews;->a:Leww;

    iget v1, p2, Leww;->k:I

    add-int/2addr v1, v0

    iput v1, p2, Leww;->k:I

    iget-boolean v0, p2, Leww;->j:Z

    if-eqz v0, :cond_1

    sget-object p1, Leww;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "Past trial succeeded so nothing to do, shouldn\'t have gotten to this."

    const/16 v0, 0x7ea

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lewv;->b:Ljava/lang/Object;

    check-cast p1, Leww;

    iget-object p1, p1, Leww;->b:Lewz;

    iget-object p2, p1, Lewz;->E:Lexs;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2}, Lexs;->c(D)V

    iget-object p2, p1, Lewz;->d:Lexi;

    iget-object v1, p1, Lewz;->E:Lexs;

    invoke-virtual {v1}, Lexs;->f()[F

    move-result-object v1

    invoke-virtual {p2, v1}, Lexi;->b([F)V

    iget-boolean p2, p1, Lewz;->n:Z

    if-eqz p2, :cond_0

    iget p2, p1, Lewz;->G:I

    if-ne p2, v0, :cond_0

    iget-object p2, p1, Lewz;->e:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    iget v1, p1, Lewz;->x:I

    invoke-virtual {p2, v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->c(I)V

    :cond_0
    iput-boolean v0, p1, Lewz;->u:Z

    iget-object p1, p0, Lewv;->b:Ljava/lang/Object;

    check-cast p1, Leww;

    iput-boolean v0, p1, Leww;->u:Z

    iget-object p1, p0, Lewv;->a:Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lexz;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x3

    if-lt v1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lewv;->b:Ljava/lang/Object;

    check-cast v0, Lbne;

    invoke-virtual {p2, v0}, Leww;->d(Lbne;)V

    :cond_3
    iget-object p2, p0, Lewv;->a:Ljava/lang/Object;

    check-cast p2, Lews;

    iget-object p2, p2, Lews;->a:Leww;

    if-eqz p1, :cond_4

    iget-wide v0, p2, Leww;->i:D

    goto :goto_0

    :cond_4
    const-wide v0, -0x3f3c7d0000000000L    # -9990.0

    :goto_0
    iput-wide v0, p2, Leww;->h:D

    iget-object p2, p0, Lewv;->a:Ljava/lang/Object;

    check-cast p2, Lews;

    iget-object p2, p2, Lews;->a:Leww;

    iput-boolean p1, p2, Leww;->j:Z

    :goto_1
    iget-object p1, p0, Lewv;->a:Ljava/lang/Object;

    check-cast p1, Lews;

    iget-object p1, p1, Lews;->a:Leww;

    iget-object p1, p1, Leww;->l:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
