.class public final Lgim;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;

.field private final h:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgim;->a:Loiw;

    iput-object p2, p0, Lgim;->b:Loiw;

    iput-object p3, p0, Lgim;->c:Loiw;

    iput-object p4, p0, Lgim;->d:Loiw;

    iput-object p5, p0, Lgim;->e:Loiw;

    iput-object p6, p0, Lgim;->f:Loiw;

    iput-object p7, p0, Lgim;->g:Loiw;

    iput-object p8, p0, Lgim;->h:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lgim;
    .locals 10

    new-instance v9, Lgim;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lgim;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v9
.end method


# virtual methods
.method public final b()Lhdk;
    .locals 10

    iget-object v1, p0, Lgim;->a:Loiw;

    iget-object v2, p0, Lgim;->b:Loiw;

    iget-object v3, p0, Lgim;->c:Loiw;

    iget-object v4, p0, Lgim;->d:Loiw;

    iget-object v5, p0, Lgim;->e:Loiw;

    iget-object v6, p0, Lgim;->f:Loiw;

    iget-object v7, p0, Lgim;->g:Loiw;

    iget-object v8, p0, Lgim;->h:Loiw;

    new-instance v9, Lhdk;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lhdk;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v9
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgim;->b()Lhdk;

    move-result-object v0

    return-object v0
.end method
