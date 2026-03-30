.class final enum Lj$/util/stream/J;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum ALL:Lj$/util/stream/J;

.field public static final enum ANY:Lj$/util/stream/J;

.field public static final enum NONE:Lj$/util/stream/J;

.field private static final synthetic c:[Lj$/util/stream/J;


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lj$/util/stream/J;

    const-string v1, "ANY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lj$/util/stream/J;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lj$/util/stream/J;->ANY:Lj$/util/stream/J;

    new-instance v1, Lj$/util/stream/J;

    const-string v4, "ALL"

    invoke-direct {v1, v4, v3, v2, v2}, Lj$/util/stream/J;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lj$/util/stream/J;->ALL:Lj$/util/stream/J;

    new-instance v4, Lj$/util/stream/J;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3, v2}, Lj$/util/stream/J;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Lj$/util/stream/J;->NONE:Lj$/util/stream/J;

    const/4 v5, 0x3

    new-array v5, v5, [Lj$/util/stream/J;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v6

    sput-object v5, Lj$/util/stream/J;->c:[Lj$/util/stream/J;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lj$/util/stream/J;->a:Z

    iput-boolean p4, p0, Lj$/util/stream/J;->b:Z

    return-void
.end method

.method static bridge synthetic k(Lj$/util/stream/J;)Z
    .locals 0

    iget-boolean p0, p0, Lj$/util/stream/J;->b:Z

    return p0
.end method

.method static bridge synthetic n(Lj$/util/stream/J;)Z
    .locals 0

    iget-boolean p0, p0, Lj$/util/stream/J;->a:Z

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/util/stream/J;
    .locals 1

    const-class v0, Lj$/util/stream/J;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/util/stream/J;

    return-object p0
.end method

.method public static values()[Lj$/util/stream/J;
    .locals 1

    sget-object v0, Lj$/util/stream/J;->c:[Lj$/util/stream/J;

    invoke-virtual {v0}, [Lj$/util/stream/J;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/util/stream/J;

    return-object v0
.end method
