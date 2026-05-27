.class public final enum Ldiw;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldiw;

.field private static final synthetic c:[Ldiw;


# instance fields
.field public final b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ldiw;

    invoke-direct {v0}, Ldiw;-><init>()V

    sput-object v0, Ldiw;->a:Ldiw;

    const/4 v1, 0x1

    new-array v1, v1, [Ldiw;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Ldiw;->c:[Ldiw;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/selinux/enforce"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldiw;->b:Ljava/io/File;

    return-void
.end method

.method public static values()[Ldiw;
    .locals 1

    sget-object v0, Ldiw;->c:[Ldiw;

    invoke-virtual {v0}, [Ldiw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldiw;

    return-object v0
.end method


# virtual methods
.method final a()Z
    .locals 1

    iget-object v0, p0, Ldiw;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
