.class public final synthetic Lhjp;
.super Ljava/lang/Object;

# interfaces
.implements Lhkc;


# instance fields
.field public final synthetic a:Lkrf;

.field public final synthetic b:Lcom/google/android/apps/camera/stats/Instrumentation;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/stats/Instrumentation;Lkrf;I)V
    .locals 0

    iput p3, p0, Lhjp;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhjp;->b:Lcom/google/android/apps/camera/stats/Instrumentation;

    iput-object p2, p0, Lhjp;->a:Lkrf;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lhjp;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhjp;->b:Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v1, p0, Lhjp;->a:Lkrf;

    new-instance v2, Lhkn;

    invoke-direct {v2, v1}, Lhkn;-><init>(Lkrf;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, Lhjp;->b:Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v1, p0, Lhjp;->a:Lkrf;

    new-instance v2, Lhkj;

    invoke-direct {v2, v1}, Lhkj;-><init>(Lkrf;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, Lhjp;->b:Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v1, p0, Lhjp;->a:Lkrf;

    new-instance v2, Lhkh;

    invoke-static {}, Lhjw;->values()[Lhjw;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lhkh;-><init>(Lkrh;[Ljava/lang/Enum;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    return-object v2

    :pswitch_2
    iget-object v0, p0, Lhjp;->b:Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v1, p0, Lhjp;->a:Lkrf;

    new-instance v2, Lhkh;

    invoke-static {}, Lhko;->values()[Lhko;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lhkh;-><init>(Lkrh;[Ljava/lang/Enum;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    return-object v2

    :pswitch_3
    iget-object v0, p0, Lhjp;->b:Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v1, p0, Lhjp;->a:Lkrf;

    new-instance v2, Lhkh;

    invoke-static {}, Lhjx;->values()[Lhjx;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lhkh;-><init>(Lkrh;[Ljava/lang/Enum;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    return-object v2

    :pswitch_4
    iget-object v0, p0, Lhjp;->b:Lcom/google/android/apps/camera/stats/Instrumentation;

    iget-object v1, p0, Lhjp;->a:Lkrf;

    new-instance v2, Lhkl;

    invoke-direct {v2, v1}, Lhkl;-><init>(Lkrf;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
