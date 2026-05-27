.class final enum Lj$/util/stream/t1;
.super Ljava/lang/Enum;


# static fields
.field public static final enum OP:Lj$/util/stream/t1;

.field public static final enum SPLITERATOR:Lj$/util/stream/t1;

.field public static final enum STREAM:Lj$/util/stream/t1;

.field public static final enum TERMINAL_OP:Lj$/util/stream/t1;

.field public static final enum UPSTREAM_TERMINAL_OP:Lj$/util/stream/t1;

.field private static final synthetic a:[Lj$/util/stream/t1;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lj$/util/stream/t1;

    const-string v1, "SPLITERATOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/util/stream/t1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/util/stream/t1;->SPLITERATOR:Lj$/util/stream/t1;

    new-instance v1, Lj$/util/stream/t1;

    const-string v3, "STREAM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj$/util/stream/t1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj$/util/stream/t1;->STREAM:Lj$/util/stream/t1;

    new-instance v3, Lj$/util/stream/t1;

    const-string v5, "OP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lj$/util/stream/t1;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj$/util/stream/t1;->OP:Lj$/util/stream/t1;

    new-instance v5, Lj$/util/stream/t1;

    const-string v7, "TERMINAL_OP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lj$/util/stream/t1;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj$/util/stream/t1;->TERMINAL_OP:Lj$/util/stream/t1;

    new-instance v7, Lj$/util/stream/t1;

    const-string v9, "UPSTREAM_TERMINAL_OP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lj$/util/stream/t1;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lj$/util/stream/t1;->UPSTREAM_TERMINAL_OP:Lj$/util/stream/t1;

    const/4 v9, 0x5

    new-array v9, v9, [Lj$/util/stream/t1;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lj$/util/stream/t1;->a:[Lj$/util/stream/t1;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/util/stream/t1;
    .locals 1

    const-class v0, Lj$/util/stream/t1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/util/stream/t1;

    return-object p0
.end method

.method public static values()[Lj$/util/stream/t1;
    .locals 1

    sget-object v0, Lj$/util/stream/t1;->a:[Lj$/util/stream/t1;

    invoke-virtual {v0}, [Lj$/util/stream/t1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/util/stream/t1;

    return-object v0
.end method
