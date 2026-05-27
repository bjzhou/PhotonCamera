.class public final Llru;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\w+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Llru;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "+"

    invoke-static {v0}, Llhz;->j(Ljava/lang/String;)Llhz;

    move-result-object v0

    invoke-virtual {v0, p0}, Llhz;->f(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "transform="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
