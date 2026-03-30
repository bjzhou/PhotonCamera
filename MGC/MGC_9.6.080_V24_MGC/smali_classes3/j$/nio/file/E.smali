.class public final enum Lj$/nio/file/E;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/nio/file/d;


# static fields
.field public static final enum ATOMIC_MOVE:Lj$/nio/file/E;

.field public static final enum COPY_ATTRIBUTES:Lj$/nio/file/E;

.field public static final enum REPLACE_EXISTING:Lj$/nio/file/E;

.field private static final synthetic a:[Lj$/nio/file/E;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lj$/nio/file/E;

    const-string v4, "REPLACE_EXISTING"

    invoke-direct {v3, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj$/nio/file/E;->REPLACE_EXISTING:Lj$/nio/file/E;

    new-instance v4, Lj$/nio/file/E;

    const-string v5, "COPY_ATTRIBUTES"

    invoke-direct {v4, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lj$/nio/file/E;->COPY_ATTRIBUTES:Lj$/nio/file/E;

    new-instance v5, Lj$/nio/file/E;

    const-string v6, "ATOMIC_MOVE"

    invoke-direct {v5, v6, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj$/nio/file/E;->ATOMIC_MOVE:Lj$/nio/file/E;

    const/4 v6, 0x3

    new-array v6, v6, [Lj$/nio/file/E;

    aput-object v3, v6, v2

    aput-object v4, v6, v1

    aput-object v5, v6, v0

    sput-object v6, Lj$/nio/file/E;->a:[Lj$/nio/file/E;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/nio/file/E;
    .locals 1

    const-class v0, Lj$/nio/file/E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/nio/file/E;

    return-object p0
.end method

.method public static values()[Lj$/nio/file/E;
    .locals 1

    sget-object v0, Lj$/nio/file/E;->a:[Lj$/nio/file/E;

    invoke-virtual {v0}, [Lj$/nio/file/E;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/nio/file/E;

    return-object v0
.end method
