.class final Lnxs;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lnxw;


# instance fields
.field public final a:Lnxw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnxq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnxq;-><init>(I)V

    sput-object v0, Lnxs;->b:Lnxw;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    new-instance v0, Lnxr;

    const/4 v1, 0x2

    new-array v1, v1, [Lnxw;

    sget-object v2, Lnxq;->a:Lnxq;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    :try_start_0
    const-string v2, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getInstance"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnxw;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v2, Lnxs;->b:Lnxw;

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnxr;-><init>([Lnxw;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lnxb;->a:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lnxs;->a:Lnxw;

    return-void
.end method

.method public static a(Lnxv;)Z
    .locals 1

    invoke-interface {p0}, Lnxv;->c()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
