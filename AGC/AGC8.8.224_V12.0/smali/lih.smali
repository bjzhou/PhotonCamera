.class public final Llih;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lmrl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/core/MetricDispatcher"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Llih;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Logd;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldet;

    const/16 v1, 0xe

    invoke-direct {v0, p1, v1}, Ldet;-><init>(Logd;I)V

    invoke-static {v0}, Llkj;->D(Lmrl;)Lmrl;

    move-result-object p1

    iput-object p1, p0, Llih;->b:Lmrl;

    return-void
.end method
