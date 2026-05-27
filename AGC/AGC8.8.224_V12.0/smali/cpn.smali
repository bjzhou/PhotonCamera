.class public final synthetic Lcpn;
.super Ljava/lang/Object;

# interfaces
.implements Lmqi;


# instance fields
.field public final synthetic a:Lcpu;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcpu;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcpn;->a:Lcpu;

    iput p2, p0, Lcpn;->b:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcpn;->a:Lcpu;

    iget v1, p0, Lcpn;->b:I

    check-cast p1, Ljava/util/List;

    new-instance v2, Lfsf;

    iget-object v3, v0, Lcpu;->e:Ljava/util/List;

    iget-object v0, v0, Lcpu;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v2, p1, v3, v0, v1}, Lfsf;-><init>(Ljava/util/List;Ljava/util/List;Landroid/graphics/Bitmap;I)V

    return-object v2
.end method
