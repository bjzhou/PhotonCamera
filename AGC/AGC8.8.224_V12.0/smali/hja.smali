.class public final synthetic Lhja;
.super Ljava/lang/Object;

# interfaces
.implements Lhkc;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/camera/stats/Instrumentation;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/camera/stats/Instrumentation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhja;->a:Lcom/google/android/apps/camera/stats/Instrumentation;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lhja;->a:Lcom/google/android/apps/camera/stats/Instrumentation;

    new-instance v1, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;

    invoke-direct {v1}, Lcom/google/android/apps/camera/stats/ViewfinderJankSession;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/stats/Instrumentation;->f(Lcom/google/android/apps/camera/stats/timing/TimingSession;)V

    return-object v1
.end method
