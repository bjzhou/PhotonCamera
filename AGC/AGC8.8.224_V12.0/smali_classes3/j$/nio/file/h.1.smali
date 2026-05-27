.class public abstract Lj$/nio/file/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lj$/nio/file/H;

.field public static final b:Lj$/nio/file/H;

.field public static final c:Lj$/nio/file/H;

.field public static final d:Lj$/nio/file/H;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lj$/nio/file/E;

    const-string v1, "OVERFLOW"

    const-class v2, Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lj$/nio/file/E;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lj$/nio/file/h;->a:Lj$/nio/file/H;

    new-instance v0, Lj$/nio/file/E;

    const-class v1, Lj$/nio/file/Path;

    const-string v2, "ENTRY_CREATE"

    invoke-direct {v0, v1, v2}, Lj$/nio/file/E;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lj$/nio/file/h;->b:Lj$/nio/file/H;

    new-instance v0, Lj$/nio/file/E;

    const-string v2, "ENTRY_DELETE"

    invoke-direct {v0, v1, v2}, Lj$/nio/file/E;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lj$/nio/file/h;->c:Lj$/nio/file/H;

    new-instance v0, Lj$/nio/file/E;

    const-string v2, "ENTRY_MODIFY"

    invoke-direct {v0, v1, v2}, Lj$/nio/file/E;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lj$/nio/file/h;->d:Lj$/nio/file/H;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lj$/nio/file/Path;)Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lj$/nio/file/r;

    invoke-direct {v0, p0}, Lj$/nio/file/r;-><init>(Lj$/nio/file/Path;)V

    return-object v0
.end method

.method public static d()Lj$/nio/file/k;
    .locals 1

    sget-object v0, Lj$/nio/file/m;->a:Lj$/nio/file/k;

    return-object v0
.end method

.method public static synthetic j([Ljava/nio/file/LinkOption;)[Lj$/nio/file/LinkOption;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    new-array v2, v1, [Lj$/nio/file/LinkOption;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    if-nez v4, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    sget-object v4, Lj$/nio/file/LinkOption;->NOFOLLOW_LINKS:Lj$/nio/file/LinkOption;

    :goto_1
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static synthetic k([Ljava/nio/file/WatchEvent$Kind;)[Lj$/nio/file/H;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [Lj$/nio/file/H;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lj$/nio/file/a;->b(Ljava/nio/file/WatchEvent$Kind;)Lj$/nio/file/H;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static synthetic l([Lj$/nio/file/LinkOption;)[Ljava/nio/file/LinkOption;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lj$/nio/file/a;->d(Lj$/nio/file/LinkOption;)Ljava/nio/file/LinkOption;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static synthetic m([Lj$/nio/file/H;)[Ljava/nio/file/WatchEvent$Kind;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [Ljava/nio/file/WatchEvent$Kind;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lj$/nio/file/a;->g(Lj$/nio/file/H;)Ljava/nio/file/WatchEvent$Kind;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract c()J
.end method

.method public abstract e(Ljava/lang/Class;)Lj$/nio/file/attribute/C;
.end method

.method public abstract f()J
.end method

.method public abstract g()J
.end method

.method public abstract h()J
.end method

.method public abstract i()Z
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public abstract o(Ljava/lang/Class;)Z
.end method

.method public abstract p(Ljava/lang/String;)Z
.end method

.method public abstract q()Ljava/lang/String;
.end method
