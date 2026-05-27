.class final Lolk;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lva;

.field public static b:Lva;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lva;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lva;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, Lolk;->a:Lva;

    return-void
.end method
