.class public final Laya;
.super Ljava/lang/Object;


# static fields
.field public static final a:Laya;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laya;

    invoke-direct {v0}, Laya;-><init>()V

    sput-object v0, Laya;->a:Laya;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method
