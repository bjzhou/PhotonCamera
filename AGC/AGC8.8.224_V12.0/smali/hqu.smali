.class public final Lhqu;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lj$/time/Duration;


# instance fields
.field public final b:Ljwb;

.field public final c:Ljwb;

.field public final d:Ljwb;

.field public final e:Lell;

.field public final f:Lgeh;

.field public final g:Lfbz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    sput-object v0, Lhqu;->a:Lj$/time/Duration;

    return-void
.end method

.method public constructor <init>(Ljwb;Ljwb;Ljwb;Lell;Lgeh;Lfbz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhqu;->b:Ljwb;

    iput-object p2, p0, Lhqu;->c:Ljwb;

    iput-object p3, p0, Lhqu;->d:Ljwb;

    iput-object p4, p0, Lhqu;->e:Lell;

    iput-object p5, p0, Lhqu;->f:Lgeh;

    iput-object p6, p0, Lhqu;->g:Lfbz;

    return-void
.end method
