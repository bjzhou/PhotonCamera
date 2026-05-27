.class final Lj$/nio/file/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/nio/file/DirectoryStream$Filter;


# static fields
.field static final a:Lj$/nio/file/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/nio/file/n;

    invoke-direct {v0}, Lj$/nio/file/n;-><init>()V

    sput-object v0, Lj$/nio/file/n;->a:Lj$/nio/file/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic accept(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lj$/nio/file/Path;

    const/4 p1, 0x1

    return p1
.end method
