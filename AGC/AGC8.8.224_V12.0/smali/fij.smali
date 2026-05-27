.class public final Lfij;
.super Ljava/lang/Object;


# static fields
.field public static final a:Llau;


# instance fields
.field public final b:Lgvb;

.field public final c:Lkli;

.field public final d:Lknz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Llau;->a([F)Llau;

    move-result-object v0

    sput-object v0, Lfij;->a:Llau;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lknz;Lkli;Lgvb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfij;->d:Lknz;

    iput-object p2, p0, Lfij;->c:Lkli;

    iput-object p3, p0, Lfij;->b:Lgvb;

    return-void
.end method
