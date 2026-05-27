.class public final synthetic Lcwz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcxb;Lcwx;ZI)V
    .locals 0

    iput p4, p0, Lcwz;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcwz;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcwz;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcwz;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(Lepo;Ljava/lang/String;ZI)V
    .locals 0

    iput p4, p0, Lcwz;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcwz;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcwz;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Lcwz;->a:Z

    return-void
.end method

.method public constructor <init>(Lewx;ZLbne;I[B)V
    .locals 0

    iput p4, p0, Lcwz;->d:I

    iput-object p1, p0, Lcwz;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lcwz;->a:Z

    iput-object p3, p0, Lcwz;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcwz;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcwz;->c:Ljava/lang/Object;

    iget-object v1, p0, Lcwz;->b:Ljava/lang/Object;

    iget-boolean v2, p0, Lcwz;->a:Z

    move-object v3, v0

    check-cast v3, Lepo;

    iget-boolean v4, v3, Lepo;->m:Z

    if-nez v4, :cond_1

    :try_start_0
    move-object v4, v0

    check-cast v4, Lepo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcwz;->c:Ljava/lang/Object;

    check-cast v0, Lewx;

    iget-object v0, v0, Lewx;->a:Ljava/lang/Object;

    check-cast v0, Lblx;

    iget-object v0, v0, Lblx;->a:Ljava/lang/Object;

    iget-boolean v1, p0, Lcwz;->a:Z

    iget-object v2, p0, Lcwz;->b:Ljava/lang/Object;

    check-cast v2, Lbne;

    invoke-interface {v0, v1, v2}, Lbmy;->a(ZLbne;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcwz;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcwz;->c:Ljava/lang/Object;

    iget-boolean v2, p0, Lcwz;->a:Z

    check-cast v1, Lcwx;

    check-cast v0, Lcxb;

    invoke-virtual {v0, v1, v2}, Lcxb;->e(Lcwx;Z)V

    return-void

    :goto_0
    :try_start_1
    iget-object v4, v4, Lepo;->f:Lkbc;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v1}, Lkbc;->e(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lepo;

    iget-object v1, v1, Lepo;->c:Leph;

    check-cast v0, Lepo;

    iget v0, v0, Lepo;->d:I

    invoke-virtual {v1, v0}, Leph;->a(I)V

    goto :goto_1

    :cond_0
    move-object v1, v0

    check-cast v1, Lepo;

    iget-object v1, v1, Lepo;->c:Leph;

    check-cast v0, Lepo;

    iget v0, v0, Lepo;->d:I

    invoke-virtual {v1, v0}, Leph;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v0, v3, Lepo;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v3, Lepo;->f:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    throw v0

    :cond_1
    sget-object v0, Lepo;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "Shot already done, ignoring %s."

    const/16 v3, 0x6f2

    invoke-static {v0, v2, v1, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
