.class public Lols;
.super Lolp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lolp;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    sget-object v0, Lolr;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    sget-object v0, Lolr;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lolp;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    return-void
.end method
