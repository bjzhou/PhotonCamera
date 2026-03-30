.class public final synthetic Lmjg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmkl;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/camera/stats/Instrumentation;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/stats/Instrumentation;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmjg;->a:Lcom/google/android/apps/camera/stats/Instrumentation;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lmjg;->a:Lcom/google/android/apps/camera/stats/Instrumentation;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    :goto_4
    invoke-direct {v0}, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method
