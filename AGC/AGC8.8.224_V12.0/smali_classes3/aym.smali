.class public final Laym;
.super Laqc;


# static fields
.field public static final c:Laym;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laym;

    invoke-direct {v0}, Laym;-><init>()V

    sput-object v0, Laym;->c:Laym;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Laqc;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(Laqp;)V
    .locals 1

    const-string v0, "ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0"

    invoke-interface {p1, v0}, Laqp;->g(Ljava/lang/String;)V

    return-void
.end method
