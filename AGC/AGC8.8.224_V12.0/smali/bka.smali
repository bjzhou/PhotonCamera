.class public final enum Lbka;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbka;

.field public static final enum b:Lbka;

.field private static final synthetic d:[Lbka;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lbka;

    const-string v1, "JSON"

    const/4 v2, 0x0

    const-string v3, ".json"

    invoke-direct {v0, v1, v2, v3}, Lbka;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbka;->a:Lbka;

    new-instance v1, Lbka;

    const-string v3, "ZIP"

    const/4 v4, 0x1

    const-string v5, ".zip"

    invoke-direct {v1, v3, v4, v5}, Lbka;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lbka;->b:Lbka;

    const/4 v3, 0x2

    new-array v3, v3, [Lbka;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lbka;->d:[Lbka;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lbka;->c:Ljava/lang/String;

    return-void
.end method

.method public static values()[Lbka;
    .locals 1

    sget-object v0, Lbka;->d:[Lbka;

    invoke-virtual {v0}, [Lbka;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbka;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbka;->c:Ljava/lang/String;

    return-object v0
.end method
