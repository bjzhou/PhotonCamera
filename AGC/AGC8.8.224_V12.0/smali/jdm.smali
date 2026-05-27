.class public final Ljdm;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;


# instance fields
.field private final a:Ljdq;


# direct methods
.method public constructor <init>(Ljdq;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Ljdh;)V

    iput-object p1, p0, Ljdm;->a:Ljdq;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/api/Status;)Ljdq;
    .locals 0

    iget-object p1, p0, Ljdm;->a:Ljdq;

    return-object p1
.end method
