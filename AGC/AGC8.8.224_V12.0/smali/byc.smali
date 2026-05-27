.class public final Lbyc;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbqe;

.field public static final b:Lbqe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lbps;->c:Lbps;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    invoke-static {v1, v0}, Lbqe;->c(Ljava/lang/String;Ljava/lang/Object;)Lbqe;

    move-result-object v0

    sput-object v0, Lbyc;->a:Lbqe;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v1, v0}, Lbqe;->c(Ljava/lang/String;Ljava/lang/Object;)Lbqe;

    move-result-object v0

    sput-object v0, Lbyc;->b:Lbqe;

    return-void
.end method
