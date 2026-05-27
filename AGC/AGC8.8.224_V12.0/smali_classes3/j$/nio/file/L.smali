.class public final synthetic Lj$/nio/file/L;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/nio/file/N;


# instance fields
.field public final synthetic a:Ljava/nio/file/WatchEvent;


# direct methods
.method private synthetic constructor <init>(Ljava/nio/file/WatchEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/nio/file/L;->a:Ljava/nio/file/WatchEvent;

    return-void
.end method

.method public static synthetic b(Ljava/nio/file/WatchEvent;)Lj$/nio/file/N;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/nio/file/M;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/nio/file/M;

    iget-object p0, p0, Lj$/nio/file/M;->a:Lj$/nio/file/N;

    return-object p0

    :cond_1
    new-instance v0, Lj$/nio/file/L;

    invoke-direct {v0, p0}, Lj$/nio/file/L;-><init>(Ljava/nio/file/WatchEvent;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/L;->a:Ljava/nio/file/WatchEvent;

    invoke-interface {v0}, Ljava/nio/file/WatchEvent;->context()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/a;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/L;->a:Ljava/nio/file/WatchEvent;

    invoke-interface {v0}, Ljava/nio/file/WatchEvent;->count()I

    move-result v0

    return v0
.end method

.method public final synthetic d()Lj$/nio/file/H;
    .locals 1

    iget-object v0, p0, Lj$/nio/file/L;->a:Ljava/nio/file/WatchEvent;

    invoke-interface {v0}, Ljava/nio/file/WatchEvent;->kind()Ljava/nio/file/WatchEvent$Kind;

    move-result-object v0

    invoke-static {v0}, Lj$/nio/file/a;->b(Ljava/nio/file/WatchEvent$Kind;)Lj$/nio/file/H;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lj$/nio/file/L;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/nio/file/L;

    iget-object p1, p1, Lj$/nio/file/L;->a:Ljava/nio/file/WatchEvent;

    :cond_0
    iget-object v0, p0, Lj$/nio/file/L;->a:Ljava/nio/file/WatchEvent;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic hashCode()I
    .locals 1

    iget-object v0, p0, Lj$/nio/file/L;->a:Ljava/nio/file/WatchEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
