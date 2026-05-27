.class public final Lhkv;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/storage/ProcessingMediaThumbnailCache"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhkv;->a:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhku;

    invoke-direct {v0}, Lhku;-><init>()V

    iput-object v0, p0, Lhkv;->b:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public final a(Lgxy;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lhkv;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llpu;

    if-eqz p1, :cond_0

    iget-object p1, p1, Llpu;->b:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lgxy;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lhkv;->b:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llpu;

    if-eqz p1, :cond_0

    iget p1, p1, Llpu;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
