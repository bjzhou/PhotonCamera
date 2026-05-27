.class public final Lnrb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnrb;

.field public static final b:Lnrb;

.field public static final c:Lnrb;

.field public static final d:Lnrb;

.field public static final e:[Lnrb;

.field private static g:I


# instance fields
.field public final f:I

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lnrb;

    const-string v1, "kRaw10"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnrb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnrb;->a:Lnrb;

    new-instance v1, Lnrb;

    const-string v3, "kRaw16"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lnrb;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnrb;->b:Lnrb;

    new-instance v3, Lnrb;

    const-string v5, "kRawRgb16"

    invoke-direct {v3, v5}, Lnrb;-><init>(Ljava/lang/String;)V

    sput-object v3, Lnrb;->c:Lnrb;

    new-instance v5, Lnrb;

    const-string v6, "kRawPlanar16"

    invoke-direct {v5, v6}, Lnrb;-><init>(Ljava/lang/String;)V

    sput-object v5, Lnrb;->d:Lnrb;

    const/4 v6, 0x4

    new-array v6, v6, [Lnrb;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    aput-object v3, v6, v4

    const/4 v0, 0x3

    aput-object v5, v6, v0

    sput-object v6, Lnrb;->e:[Lnrb;

    sput v2, Lnrb;->g:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnrb;->h:Ljava/lang/String;

    sget p1, Lnrb;->g:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lnrb;->g:I

    iput p1, p0, Lnrb;->f:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnrb;->h:Ljava/lang/String;

    iput p2, p0, Lnrb;->f:I

    add-int/lit8 p2, p2, 0x1

    sput p2, Lnrb;->g:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnrb;->h:Ljava/lang/String;

    return-object v0
.end method
