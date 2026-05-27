.class public final Ljdj;
.super Ljdl;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/BasePendingResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljdl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljdl;)V
    .locals 0

    invoke-direct {p0}, Ljdl;-><init>()V

    check-cast p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iput-object p1, p0, Ljdj;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    return-void
.end method


# virtual methods
.method public final k(Ljdk;)V
    .locals 1

    iget-object v0, p0, Ljdj;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-virtual {v0, p1}, Ljdl;->k(Ljdk;)V

    return-void
.end method

.method public final l(Ljava/util/concurrent/TimeUnit;)Ljdq;
    .locals 1

    iget-object v0, p0, Ljdj;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->l(Ljava/util/concurrent/TimeUnit;)Ljdq;

    move-result-object p1

    return-object p1
.end method
