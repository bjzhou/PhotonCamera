.class public final Lfov;
.super Ljava/lang/Object;

# interfaces
.implements Lfpc;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lfow;I)V
    .locals 0

    iput p2, p0, Lfov;->b:I

    iput-object p1, p0, Lfov;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lgsl;I)V
    .locals 0

    iput p2, p0, Lfov;->b:I

    iput-object p1, p0, Lfov;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lfov;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfov;->a:Ljava/lang/Object;

    check-cast v0, Lgsl;

    iget v0, v0, Lgsl;->b:F

    return v0

    :pswitch_0
    iget-object v0, p0, Lfov;->a:Ljava/lang/Object;

    check-cast v0, Lfow;

    iget-object v0, v0, Lfow;->c:Ljava/lang/Object;

    check-cast v0, Lgsl;

    iget v0, v0, Lgsl;->b:F

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lfov;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfov;->a:Ljava/lang/Object;

    check-cast v0, Lgsl;

    iget v0, v0, Lgsl;->b:F

    return v0

    :pswitch_0
    iget-object v0, p0, Lfov;->a:Ljava/lang/Object;

    check-cast v0, Lfow;

    iget v0, v0, Lfow;->b:F

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()J
    .locals 2

    iget v0, p0, Lfov;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfov;->a:Ljava/lang/Object;

    check-cast v0, Lgsl;

    iget-wide v0, v0, Lgsl;->a:J

    return-wide v0

    :pswitch_0
    iget-object v0, p0, Lfov;->a:Ljava/lang/Object;

    check-cast v0, Lfow;

    iget-object v0, v0, Lfow;->c:Ljava/lang/Object;

    check-cast v0, Lgsl;

    iget-wide v0, v0, Lgsl;->a:J

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Lgsl;
    .locals 1

    iget v0, p0, Lfov;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfov;->a:Ljava/lang/Object;

    check-cast v0, Lgsl;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lfov;->a:Ljava/lang/Object;

    check-cast v0, Lfow;

    iget-object v0, v0, Lfow;->c:Ljava/lang/Object;

    check-cast v0, Lgsl;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lmqp;
    .locals 1

    iget v0, p0, Lfov;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfov;->a:Ljava/lang/Object;

    check-cast v0, Lgsl;

    iget-object v0, v0, Lgsl;->r:Lmqp;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lfov;->a:Ljava/lang/Object;

    check-cast v0, Lfow;

    iget-object v0, v0, Lfow;->c:Ljava/lang/Object;

    check-cast v0, Lgsl;

    iget-object v0, v0, Lgsl;->r:Lmqp;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Lmqp;
    .locals 1

    iget v0, p0, Lfov;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfov;->a:Ljava/lang/Object;

    check-cast v0, Lgsl;

    iget-object v0, v0, Lgsl;->p:Lmqp;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lfov;->a:Ljava/lang/Object;

    check-cast v0, Lfow;

    iget-object v0, v0, Lfow;->c:Ljava/lang/Object;

    check-cast v0, Lgsl;

    iget-object v0, v0, Lgsl;->p:Lmqp;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
