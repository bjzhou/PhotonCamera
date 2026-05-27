.class public final Lfwr;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lfwq;

.field public static final b:Lfwq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfwq;

    const-string v1, "TOTAL_CAPTURE_RESULT"

    invoke-direct {v0, v1}, Lfwq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfwr;->a:Lfwq;

    new-instance v0, Lfwq;

    const-string v1, "IMAGE_ID"

    invoke-direct {v0, v1}, Lfwq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lfwr;->b:Lfwq;

    return-void
.end method
