.class public final enum Lozo;
.super Ljava/lang/Enum;

# interfaces
.implements Lnwv;


# static fields
.field public static final enum a:Lozo;

.field public static final enum b:Lozo;

.field public static final enum c:Lozo;

.field private static final synthetic e:[Lozo;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lozo;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lozo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lozo;->a:Lozo;

    new-instance v1, Lozo;

    const-string v3, "CREDENTIAL_ENCRYPTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lozo;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lozo;->b:Lozo;

    new-instance v3, Lozo;

    const-string v5, "DEVICE_ENCRYPTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lozo;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lozo;->c:Lozo;

    const/4 v5, 0x3

    new-array v5, v5, [Lozo;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lozo;->e:[Lozo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lozo;->d:I

    return-void
.end method

.method public static values()[Lozo;
    .locals 1

    sget-object v0, Lozo;->e:[Lozo;

    invoke-virtual {v0}, [Lozo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lozo;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lozo;->d:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lozo;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
