.class public final Ljeh;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    iput-object p1, p0, Ljeh;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 2

    iget-object v0, p0, Ljeh;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    sget-object v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c:Ljava/lang/ThreadLocal;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d:Ljdq;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Ljdq;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
