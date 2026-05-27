.class public final Llcl;
.super Ljava/lang/Object;


# static fields
.field public static final a:[F

.field public static final b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Llcl;->a:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Llcl;->b:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Llbd;)Lldh;
    .locals 3

    const-class v0, Llcl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ldet;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Ldet;-><init>(Llbd;I)V

    const-string v2, "_texcoords"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Llbd;->h(Ljava/lang/Object;Lmrl;)Llfl;

    move-result-object p0

    invoke-virtual {p0}, Llfl;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lldh;

    return-object p0
.end method
