.class public final Leyr;
.super Ljava/lang/Object;

# interfaces
.implements Lhdw;


# instance fields
.field final synthetic a:Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;

.field final synthetic b:Lmqp;

.field final synthetic c:Lkvj;

.field public final synthetic d:Leys;


# direct methods
.method public constructor <init>(Leys;Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;Lmqp;Lkvj;)V
    .locals 0

    iput-object p1, p0, Leyr;->d:Leys;

    iput-object p2, p0, Leyr;->a:Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;

    iput-object p3, p0, Leyr;->b:Lmqp;

    iput-object p4, p0, Leyr;->c:Lkvj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 9

    if-eqz p1, :cond_0

    iget-object v0, p0, Leyr;->d:Leys;

    iget-object v0, v0, Leys;->z:Ljuh;

    iget-object v4, p0, Leyr;->a:Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;

    iget-object v5, p0, Leyr;->b:Lmqp;

    iget-object v6, p0, Leyr;->c:Lkvj;

    new-instance v8, Lcfu;

    const/16 v7, 0xa

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcfu;-><init>(Leyr;Landroid/graphics/Bitmap;Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;Lmqp;Lkvj;I)V

    invoke-virtual {v0, v8}, Ljuh;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
