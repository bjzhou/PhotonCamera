.class final Ljej;
.super Ljava/lang/Object;

# interfaces
.implements Ljdk;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field final synthetic b:Ligo;


# direct methods
.method public constructor <init>(Ligo;Lcom/google/android/gms/common/api/internal/BasePendingResult;[B[B[B)V
    .locals 0

    iput-object p1, p0, Ljej;->b:Ligo;

    iput-object p2, p0, Ljej;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object p1, p0, Ljej;->b:Ligo;

    iget-object p1, p1, Ligo;->b:Ljava/lang/Object;

    iget-object v0, p0, Ljej;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
