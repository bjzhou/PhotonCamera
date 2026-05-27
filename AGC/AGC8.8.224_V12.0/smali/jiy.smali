.class abstract Ljiy;
.super Ljec;


# direct methods
.method public constructor <init>(Ljdh;)V
    .locals 0

    invoke-direct {p0, p1}, Ljec;-><init>(Ljdh;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/common/api/Status;)Ljdq;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    :cond_0
    return-object p1
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljdq;

    invoke-super {p0, p1}, Ljec;->i(Ljdq;)V

    return-void
.end method
