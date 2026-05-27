.class public final Lnv;
.super Ljava/lang/Object;


# static fields
.field public static final a:Laed;


# instance fields
.field public b:I

.field public c:Laev;

.field public d:Laev;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Laee;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Laee;-><init>(I)V

    sput-object v0, Lnv;->a:Laed;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lnv;
    .locals 1

    sget-object v0, Lnv;->a:Laed;

    invoke-interface {v0}, Laed;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnv;

    if-nez v0, :cond_0

    new-instance v0, Lnv;

    invoke-direct {v0}, Lnv;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static b(Lnv;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lnv;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lnv;->c:Laev;

    iput-object v0, p0, Lnv;->d:Laev;

    sget-object v0, Lnv;->a:Laed;

    invoke-interface {v0, p0}, Laed;->b(Ljava/lang/Object;)Z

    return-void
.end method
