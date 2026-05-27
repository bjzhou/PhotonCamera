.class public final Ljpy;
.super Ljfs;

# interfaces
.implements Ljdq;


# instance fields
.field private final b:Lcom/google/android/gms/common/api/Status;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    iput p2, p0, Ljpy;->c:I

    invoke-direct {p0, p1}, Ljfs;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    iget p1, p1, Lcom/google/android/gms/common/data/DataHolder;->e:I

    invoke-direct {p2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object p2, p0, Ljpy;->b:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I[B)V
    .locals 0

    iput p2, p0, Ljpy;->c:I

    invoke-direct {p0, p1}, Ljfs;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    iget p1, p1, Lcom/google/android/gms/common/data/DataHolder;->e:I

    invoke-direct {p2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object p2, p0, Ljpy;->b:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget v0, p0, Ljpy;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ljpy;->b:Lcom/google/android/gms/common/api/Status;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Ljpy;->b:Lcom/google/android/gms/common/api/Status;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected final synthetic e(II)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Ljpy;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljre;

    iget-object v1, p0, Ljpy;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1, p2}, Ljre;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    return-object v0

    :pswitch_0
    new-instance v0, Ljrg;

    iget-object v1, p0, Ljpy;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1, p2}, Ljrg;-><init>(Lcom/google/android/gms/common/data/DataHolder;II)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected final f()Ljava/lang/String;
    .locals 2

    iget v0, p0, Ljpy;->c:I

    const-string v1, "path"

    return-object v1
.end method
