.class public abstract Lmtw;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lmtw;

.field public static final c:Lmtw;

.field public static final d:Lmtw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmtu;

    invoke-direct {v0}, Lmtu;-><init>()V

    sput-object v0, Lmtw;->b:Lmtw;

    new-instance v0, Lmtv;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lmtv;-><init>(I)V

    sput-object v0, Lmtw;->c:Lmtw;

    new-instance v0, Lmtv;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmtv;-><init>(I)V

    sput-object v0, Lmtw;->d:Lmtw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmtw;
.end method
