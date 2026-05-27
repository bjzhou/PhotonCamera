.class public final Lewx;
.super Ljava/lang/Object;

# interfaces
.implements Lbmy;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lblx;I)V
    .locals 0

    iput p2, p0, Lewx;->b:I

    iput-object p1, p0, Lewx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lewz;I)V
    .locals 0

    iput p2, p0, Lewx;->b:I

    iput-object p1, p0, Lewx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLbne;)V
    .locals 8

    iget v0, p0, Lewx;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lewx;->a:Ljava/lang/Object;

    check-cast v0, Lblx;

    iget-object v0, v0, Lblx;->b:Ljava/lang/Object;

    new-instance v7, Lcwz;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcwz;-><init>(Lewx;ZLbne;I[B)V

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lewx;->a:Ljava/lang/Object;

    check-cast p1, Lewz;

    iget-object p1, p1, Lewz;->h:Lexg;

    iget-object p2, p1, Lexg;->b:Lexs;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lexs;->b()V

    iget-object p2, p1, Lexg;->b:Lexs;

    invoke-virtual {p2}, Lexs;->e()[F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, p1, Lexg;->c:J

    iget-object p2, p1, Lexg;->b:Lexs;

    iget p2, p2, Lexs;->k:F

    sget-object v1, Lewr;->a:Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->StartGyroCalibration(F)V

    const/4 p2, 0x1

    iput-boolean p2, p1, Lexg;->g:Z

    iput-boolean v0, p1, Lexg;->h:Z

    :cond_0
    iget-object p1, p0, Lewx;->a:Ljava/lang/Object;

    check-cast p1, Lewz;

    iput-boolean v0, p1, Lewz;->v:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
