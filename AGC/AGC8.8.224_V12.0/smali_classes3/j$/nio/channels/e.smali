.class public final synthetic Lj$/nio/channels/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/channels/CompletionHandler;


# instance fields
.field public final synthetic a:Lj$/nio/channels/f;


# direct methods
.method private synthetic constructor <init>(Lj$/nio/channels/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/channels/e;->a:Lj$/nio/channels/f;

    return-void
.end method

.method public static synthetic a(Lj$/nio/channels/f;)Ljava/nio/channels/CompletionHandler;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/channels/d;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/channels/d;

    iget-object p0, p0, Lj$/nio/channels/d;->a:Ljava/nio/channels/CompletionHandler;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/channels/e;

    invoke-direct {v0, p0}, Lj$/nio/channels/e;-><init>(Lj$/nio/channels/f;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic completed(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/e;->a:Lj$/nio/channels/f;

    check-cast v0, Lj$/nio/channels/d;

    invoke-virtual {v0, p1, p2}, Lj$/nio/channels/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/nio/channels/e;->a:Lj$/nio/channels/f;

    instance-of v1, p1, Lj$/nio/channels/e;

    if-eqz v1, :cond_0

    check-cast p1, Lj$/nio/channels/e;

    iget-object p1, p1, Lj$/nio/channels/e;->a:Lj$/nio/channels/f;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic failed(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/e;->a:Lj$/nio/channels/f;

    check-cast v0, Lj$/nio/channels/d;

    invoke-virtual {v0, p1, p2}, Lj$/nio/channels/d;->c(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/channels/e;->a:Lj$/nio/channels/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
