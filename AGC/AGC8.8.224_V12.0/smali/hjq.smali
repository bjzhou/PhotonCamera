.class public final synthetic Lhjq;
.super Ljava/lang/Object;

# interfaces
.implements Lhkc;


# instance fields
.field public final synthetic a:Lkrf;

.field public final synthetic b:Lkbc;

.field public final synthetic c:Lcom/google/android/apps/camera/stats/Instrumentation;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/stats/Instrumentation;Lkrf;Lkbc;I)V
    .locals 0

    iput p4, p0, Lhjq;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhjq;->c:Lcom/google/android/apps/camera/stats/Instrumentation;

    iput-object p2, p0, Lhjq;->a:Lkrf;

    iput-object p3, p0, Lhjq;->b:Lkbc;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lhjq;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhjq;->c:Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v1, p0, Lhjq;->a:Lkrf;

    iget-object v2, p0, Lhjq;->b:Lkbc;

    new-instance v3, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;

    invoke-direct {v3, v1, v2}, Lcom/google/android/apps/camera/stats/timing/OneCameraTiming;-><init>(Lkrf;Lkbc;)V

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    return-object v3

    :pswitch_0
    iget-object v0, p0, Lhjq;->c:Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v1, p0, Lhjq;->a:Lkrf;

    iget-object v2, p0, Lhjq;->b:Lkbc;

    new-instance v3, Lhjz;

    invoke-direct {v3, v1, v2}, Lhjz;-><init>(Lkrf;Lkbc;)V

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    return-object v3

    :pswitch_1
    iget-object v0, p0, Lhjq;->c:Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v1, p0, Lhjq;->a:Lkrf;

    iget-object v2, p0, Lhjq;->b:Lkbc;

    new-instance v3, Lhke;

    invoke-direct {v3, v1, v2}, Lhke;-><init>(Lkrh;Lkbc;)V

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
