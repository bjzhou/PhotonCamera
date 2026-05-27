.class public final Lnqt;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnqt;

.field public static final b:Lnqt;

.field public static final c:Lnqt;

.field public static final d:[Lnqt;


# instance fields
.field public final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lnqt;

    const-string v1, "kUnknown"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnqt;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnqt;->a:Lnqt;

    new-instance v1, Lnqt;

    const-string v2, "kStationary"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lnqt;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnqt;->b:Lnqt;

    new-instance v2, Lnqt;

    const-string v4, "kMoving"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lnqt;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lnqt;->c:Lnqt;

    const/4 v4, 0x3

    new-array v4, v4, [Lnqt;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    const/4 v0, 0x2

    aput-object v2, v4, v0

    sput-object v4, Lnqt;->d:[Lnqt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnqt;->f:Ljava/lang/String;

    iput p2, p0, Lnqt;->e:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnqt;->f:Ljava/lang/String;

    return-object v0
.end method
