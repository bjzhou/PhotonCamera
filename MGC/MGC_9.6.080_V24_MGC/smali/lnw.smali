.class public final Llnw;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lqht;

.field public b:Landroid/graphics/Color;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public final i:Landroid/graphics/PointF;

.field public final j:Landroid/graphics/PointF;

.field public final k:Landroid/graphics/PointF;

.field public final l:Landroid/graphics/PointF;

.field public final m:Landroid/graphics/Rect;

.field public final n:Lqjs;


# direct methods
.method public constructor <init>(Lqht;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#FF00FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Llnw;->b:Landroid/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Llnw;->c:F

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, p0, Llnw;->d:F

    const/4 v1, 0x0

    iput v1, p0, Llnw;->e:F

    iput v1, p0, Llnw;->f:F

    iput v1, p0, Llnw;->g:F

    const/high16 v2, 0x40400000    # 3.0f

    iput v2, p0, Llnw;->h:F

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Llnw;->i:Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x42480000    # 50.0f

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Llnw;->j:Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x43960000    # 300.0f

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Llnw;->k:Landroid/graphics/PointF;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Llnw;->l:Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Llnw;->m:Landroid/graphics/Rect;

    new-instance v1, Lqjc;

    invoke-direct {v1, p1}, Lqjc;-><init>(Lqht;)V

    const-string v2, "#version 300 es\nin vec2 aPosition;\n\nvoid main() {\n  gl_Position = vec4(aPosition.xy, 0.0, 1.0);\n}\n"

    invoke-static {p1, v2}, Lqjs;->h(Lqht;Ljava/lang/String;)Lqjs;

    move-result-object v2

    new-instance v3, Lqlr;

    invoke-direct {v3, v2}, Lqlr;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lqjc;->a(Lqlt;)V

    invoke-static {p1, p2}, Lqjs;->b(Lqht;Ljava/lang/String;)Lqjs;

    move-result-object p2

    new-instance v2, Lqlr;

    invoke-direct {v2, p2}, Lqlr;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lqjc;->a(Lqlt;)V

    invoke-virtual {v1}, Lqjc;->b()Lqjs;

    move-result-object p2

    iput-object p2, p0, Llnw;->n:Lqjs;

    iput-object p1, p0, Llnw;->a:Lqht;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lqht;)V
    .locals 6

    invoke-static {p1}, Lcom/android/app/Application;->ia(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/android/app/Application;->ib(Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    :goto_0
    new-instance v1, Landroid/graphics/PointF;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v1, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Llnw;->f:F

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v4, 0x7f130077

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Landroid/graphics/PointF;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2}, Lqjc;->a(Lqlt;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    :goto_7
    invoke-direct {v2, v0}, Lqlr;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "\n"

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v1, p0, Llnw;->i:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v2}, Lj$/io/BufferedReaderRetargetClass;->lines(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;

    move-result-object p1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/high16 v2, 0x42480000    # 50.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    :goto_11
    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, p2}, Lqjc;-><init>(Lqht;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_15
    invoke-static {v0}, Lj$/io/BufferedReaderRetargetClass;->lines(Ljava/io/BufferedReader;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_36

    nop

    nop

    :goto_1a
    invoke-static {p2, p1}, Lqjs;->b(Lqht;Ljava/lang/String;)Lqjs;

    move-result-object p1

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1b
    const v0, 0x3e4ccccd    # 0.2f

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput v0, p0, Llnw;->e:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v1, p0, Llnw;->j:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1f
    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_20
    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    invoke-direct {v1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto/32 :goto_a

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Lqjc;->b()Lqjs;

    move-result-object p1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_25
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v0, Ljava/io/BufferedReader;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v1, p0, Llnw;->k:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_29
    iput-object p1, p0, Llnw;->n:Lqjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto/32 :goto_15

    nop

    nop

    :goto_2b
    const-string v0, "#FF00FF"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput v0, p0, Llnw;->d:F

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1, v0}, Lqjc;->a(Lqlt;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v2, Lqlr;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v3, Ljava/io/InputStreamReader;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    :goto_33
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_34
    iput-object p2, p0, Llnw;->a:Lqht;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v3, 0x7f130078

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_36
    iput-object v0, p0, Llnw;->m:Landroid/graphics/Rect;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_37
    iput-object v1, p0, Llnw;->l:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_38
    new-instance v0, Lqlr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_39
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3b
    new-instance v1, Lqjc;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v1, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iput v0, p0, Llnw;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v1}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_3f
    const-string v5, "codex_lnw_vert"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, v0}, Lqjs;->h(Lqht;Ljava/lang/String;)Lqjs;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct {v0, p1}, Lqlr;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_41
    iput v0, p0, Llnw;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_42
    invoke-interface {v0, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_44
    const/high16 v2, 0x43960000    # 300.0f

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_45
    const/high16 v1, 0x40400000    # 3.0f

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {p1}, Lcom/a;->ig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "codex_lnw_frag"

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput-object v0, p0, Llnw;->b:Landroid/graphics/Color;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_48
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iput v1, p0, Llnw;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4a
    invoke-static {v1}, Lj$/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    new-instance v2, Ljava/io/BufferedReader;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4e
    new-instance v1, Ljava/io/InputStreamReader;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop
.end method
