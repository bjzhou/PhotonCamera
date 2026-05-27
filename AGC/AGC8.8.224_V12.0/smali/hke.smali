.class public final Lhke;
.super Lhkh;


# instance fields
.field public a:Lkbf;

.field private final b:Lkbc;


# direct methods
.method public constructor <init>(Lkrh;Lkbc;)V
    .locals 1

    invoke-static {}, Lhkd;->values()[Lhkd;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhkh;-><init>(Lkrh;[Ljava/lang/Enum;)V

    iput-object p2, p0, Lhke;->b:Lkbc;

    return-void
.end method


# virtual methods
.method public final c()J
    .locals 2

    sget-object v0, Lhkd;->a:Lhkd;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .locals 2

    sget-object v0, Lhkd;->b:Lhkd;

    invoke-virtual {p0, v0}, Lhkh;->g(Ljava/lang/Enum;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()V
    .locals 1

    sget-object v0, Lhkd;->a:Lhkd;

    invoke-virtual {p0, v0}, Lhkh;->h(Ljava/lang/Enum;)V

    return-void
.end method

.method public final f()V
    .locals 2

    sget-object v0, Lhkd;->b:Lhkd;

    invoke-virtual {p0, v0}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object v0, p0, Lhke;->b:Lkbc;

    const-string v1, "Shutter.FramesTaken"

    invoke-interface {v0, v1}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v0

    iput-object v0, p0, Lhke;->a:Lkbf;

    return-void
.end method
