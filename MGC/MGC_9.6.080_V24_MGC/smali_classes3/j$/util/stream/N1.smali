.class public final enum Lj$/util/stream/N1;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DOUBLE_VALUE:Lj$/util/stream/N1;

.field public static final enum INT_VALUE:Lj$/util/stream/N1;

.field public static final enum LONG_VALUE:Lj$/util/stream/N1;

.field public static final enum REFERENCE:Lj$/util/stream/N1;

.field private static final synthetic a:[Lj$/util/stream/N1;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lj$/util/stream/N1;

    const-string v5, "REFERENCE"

    invoke-direct {v4, v5, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lj$/util/stream/N1;->REFERENCE:Lj$/util/stream/N1;

    new-instance v5, Lj$/util/stream/N1;

    const-string v6, "INT_VALUE"

    invoke-direct {v5, v6, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj$/util/stream/N1;->INT_VALUE:Lj$/util/stream/N1;

    new-instance v6, Lj$/util/stream/N1;

    const-string v7, "LONG_VALUE"

    invoke-direct {v6, v7, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lj$/util/stream/N1;->LONG_VALUE:Lj$/util/stream/N1;

    new-instance v7, Lj$/util/stream/N1;

    const-string v8, "DOUBLE_VALUE"

    invoke-direct {v7, v8, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lj$/util/stream/N1;->DOUBLE_VALUE:Lj$/util/stream/N1;

    const/4 v8, 0x4

    new-array v8, v8, [Lj$/util/stream/N1;

    aput-object v4, v8, v3

    aput-object v5, v8, v2

    aput-object v6, v8, v1

    aput-object v7, v8, v0

    sput-object v8, Lj$/util/stream/N1;->a:[Lj$/util/stream/N1;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/util/stream/N1;
    .locals 1

    const-class v0, Lj$/util/stream/N1;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/util/stream/N1;

    return-object p0
.end method

.method public static values()[Lj$/util/stream/N1;
    .locals 1

    sget-object v0, Lj$/util/stream/N1;->a:[Lj$/util/stream/N1;

    invoke-virtual {v0}, [Lj$/util/stream/N1;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/util/stream/N1;

    return-object v0
.end method
