.class public final Llrw;
.super Ljava/lang/Object;

# interfaces
.implements Llre;


# instance fields
.field private final a:Lnyf;

.field private final b:Lnwh;


# direct methods
.method public constructor <init>(Lnyf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnwh;->a:Lnwh;

    iput-object v0, p0, Llrw;->b:Lnwh;

    iput-object p1, p0, Llrw;->a:Lnyf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lkte;)Ljava/lang/Object;
    .locals 7

    invoke-static {p1}, Llrx;->b(Lkte;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Llrw;->a:Lnyf;

    iget-object v1, p0, Llrw;->b:Lnwh;

    invoke-interface {v0, p1, v1}, Lnyf;->a(Ljava/io/InputStream;Lnwh;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_2
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "addSuppressed"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_1
    :goto_0
    throw v0
.end method
